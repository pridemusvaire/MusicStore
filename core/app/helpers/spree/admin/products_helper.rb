module Spree
  module Admin
    module ProductsHelper
      def taxon_options_for(product)
        options = @taxons.map do |taxon|
          selected = product.taxons.include?(taxon)
          content_tag(:option,
                      :value    => taxon.id,
                      :selected => ('selected' if selected)) do
            (taxon.ancestors.map(&:name) + [taxon.name]).join(" -> ")
          end
        end.join("").html_safe
      end

      def option_types_options_for(product)
        options = @option_types.map do |option_type|
          selected = product.option_types.include?(option_type)
          content_tag(:option,
                      :value    => option_type.id,
                      :selected => ('selected' if selected)) do
            option_type.presentation
          end
        end.join("").html_safe
      end

      def artist_options_for(artist)
        options = @artists.map do |a|
          selected = artist.bands.include?(a)
          content_tag(:option,
                      :value    => a.id,
                      :selected => ('selected' if selected)) do
            a.name
          end
        end.join("").html_safe
      end

    end
  end
end
