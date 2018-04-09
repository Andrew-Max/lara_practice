class XyzsController < ApplicationController

  @@objects = ['xyz1', 'xyz2']

  def index
    @xyzs = ['xyz1', 'xyz2']
  end

  def show
    @xyz = objects[params[:id]]
  end
end
