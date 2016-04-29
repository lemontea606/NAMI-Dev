class AccessesController < ApplicationController
    def index
        @accesses = Access.all()
        @access_attr = ['email']
    end
    
    def create
        to_create={}
        params[:access].each do |attr|
            to_create[attr[0]]=attr[1].to_s.downcase
        end
        @access = Access.create(to_create)
        render :json => @access if request.xhr? && params[:where] == "inplace"
    end
    
    def update
        @access = Access.find(params[:id])
        to_update={}
        params[:access].each do |attr|
          to_update[attr[0]] = attr[1].downcase
        end
        @access.update_attributes(to_update)
        render :json => @access if request.xhr? && params[:where] == "inplace"
    end
    
    def destroy
    end
end