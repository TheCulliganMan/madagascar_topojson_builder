#all
build/MDG_adm.zip:
	mkdir -p $(dir $@)
	curl -o $@ http://biogeo.ucdavis.edu/data/diva/adm/$(notdir $@)

#step 0
build/MDG_adm0.shp: build/MDG_adm.zip
	unzip -od $(dir $@) $<
	touch $@

build/MDG_adm0.fixed.json: build/MDG_adm0.shp
	for I in 0 1 2 3 4; do \
		ogr2ogr -f GeoJSON $(dir $@)mdg_adm$$I.fixed.json build/MDG_adm$$I.shp; \
	done;

topojson/mdg_adm0.json: build/MDG_adm0.fixed.json
	mkdir -p $(dir $@)
	for I in 0 1 2 3 4;	do \
	topojson -o $(dir $@)mdg_adm$$I.json -- mdg_adm$$I=build/mdg_adm$$I.fixed.json; \
	done

clean:
	rm -r topojson build

all: topojson/mdg_adm0.json
