module ApplicationHelper

  def active_class(path, mobile)
    if mobile
      if request.path == path
        return 'bg-indigo-700 text-white block rounded-md px-3 py-2 text-base font-medium'
      else
        return 'text-white hover:bg-indigo-500 hover:bg-opacity-75 block rounded-md px-3 py-2 text-base font-medium'
      end
    else
      if request.path == path
        return 'bg-indigo-700 text-white rounded-md px-3 py-2 text-sm font-medium'
      else
        return 'text-white hover:bg-indigo-500 hover:bg-opacity-75 rounded-md px-3 py-2 text-sm font-medium'
      end
    end
  end

end
