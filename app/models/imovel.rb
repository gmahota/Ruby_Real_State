class Imovel < ActiveRecord::Base
  attr_accessible :area,:documentos_attributes, :cidade, :descriacao, :estado, :localizacao, :preco, :provincia,:latitude,:longitude,:raio, :referencia, :resumo, :tipoImovel, :tipoNegocio,:tipologia, :moeda
  has_many :documentos
  
  accepts_nested_attributes_for :documentos
  
  self.per_page = 3
  
  def self.search(idreferencia , idNegocio , idtipoImovel , idTipologia , idCidade)
    @imovel
    if idreferencia.blank?
      @imovel = self.where("tipoNegocio LIKE ? and tipoImovel LIKE ? and  cidade LIKE ? and tipologia LIKE?" , "%#{idNegocio}%", "%#{idtipoImovel}%" , "%#{idCidade}%", "%#{idTipologia}%")
    else
      @imovel = self.where("referencia LIKE ?", "%#{idreferencia}%")
    end
    if idreferencia.blank? and idNegocio.blank? and idtipoImovel.blank? and idTipologia.blank? and idCidade.blank?
      @imovel = self.where("referencia LIKE ?", "%#{idreferencia}%");
    end
    @imovel
  end
end
