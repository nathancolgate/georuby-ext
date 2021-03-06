# module RGeo

#   module Feature

#     module Point      
#       def to_georuby
#         GeoRuby::SimpleFeatures::Point.from_x_y x, y, srid
#       end      
#     end

#     module LineString
#       def to_georuby
#         GeoRuby::SimpleFeatures::LineString.from_points points.collect(&:to_georuby), srid
#       end  
      
#       def to_linear_ring
#         linear_ring_points = points.first == points.last ? points : points.push(points.first)
#         factory.linear_ring linear_ring_points
#       end
#     end

#     module LinearRing
#       def to_georuby
#         GeoRuby::SimpleFeatures::LinearRing.from_points points.collect(&:to_georuby), srid
#       end
      
#       def to_linear_ring
#         linear_ring_points = points.first == points.last ? points : points.push(points.first)
#         factory.linear_ring linear_ring_points
#       end
#     end

#     module Polygon
#       def rings
#         [exterior_ring] + interior_rings
#       end
      
#       def linear_rings
#         rings.collect(&:to_linear_ring)
#       end
      
#       def to_georuby
#         GeoRuby::SimpleFeatures::Polygon.from_linear_rings linear_rings.collect(&:to_georuby), srid
#       end
#     end

#     module MultiPolygon
#       def to_georuby
#         GeoRuby::SimpleFeatures::MultiPolygon.from_polygons collect(&:to_georuby), srid
#       end
#     end

#     module GeometryCollection
#       def to_georuby
#         GeoRuby::SimpleFeatures::GeometryCollection.from_geometries collect(&:to_georuby), srid
#       end
#     end

#   end
# end

# ###############################
# #           FFI               #
# ###############################
# class RGeo::Geos::FFIPointImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::Point.from_x_y x, y, srid
#   end
# end

# class RGeo::Geos::FFILineStringImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::LineString.from_points points.collect(&:to_georuby), srid
#   end  

#   def to_linear_ring
#     linear_ring_points = points.first == points.last ? points : points.push(points.first)
#     factory.linear_ring linear_ring_points
#   end
# end

# class RGeo::Geos::FFILinearRingImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::LinearRing.from_points points.collect(&:to_georuby), srid
#   end

#   def to_linear_ring
#     linear_ring_points = points.first == points.last ? points : points.push(points.first)
#     factory.linear_ring linear_ring_points
#   end
# end

# class RGeo::Geos::FFIPolygonImpl
#   def rings
#     [exterior_ring] + interior_rings
#   end

#   def linear_rings
#     rings.collect(&:to_linear_ring)
#   end

#   def to_georuby
#     GeoRuby::SimpleFeatures::Polygon.from_linear_rings linear_rings.collect(&:to_georuby), srid
#   end
# end

# class RGeo::Geos::FFIMultiPolygonImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::MultiPolygon.from_polygons collect(&:to_georuby), srid
#   end
# end

# class RGeo::Geos::FFIGeometryCollectionImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::GeometryCollection.from_geometries collect(&:to_georuby), srid
#   end
# end


# ###############################
# #           CAPI              #
# ###############################
# class RGeo::Geos::CAPIPointImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::Point.from_x_y x, y, srid
#   end
# end

# class RGeo::Geos::CAPILineStringImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::LineString.from_points points.collect(&:to_georuby), srid
#   end
# end

# class RGeo::Geos::CAPILinearRingImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::LinearRing.from_points points.collect(&:to_georuby), srid
#   end
# end

# class RGeo::Geos::CAPIPolygonImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::Polygon.from_linear_rings [exterior_ring.to_georuby] + interior_rings.map(&:to_georuby), srid
#   end
# end

# class RGeo::Geos::CAPIMultiPolygonImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::MultiPolygon.from_polygons collect(&:to_georuby), srid
#   end
# end

# class RGeo::Geos::CAPIGeometryCollectionImpl
#   def to_georuby
#     GeoRuby::SimpleFeatures::GeometryCollection.from_geometries collect(&:to_georuby), srid
#   end
# end
