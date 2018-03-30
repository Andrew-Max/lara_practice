class XyzsController < ApplicationController

  def index
    @xyzs = ['xyz1', 'xyz2']
  end

  def show
    @xyz = 'xyz1'
  end
end
