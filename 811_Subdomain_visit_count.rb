# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
    count_by_domain = {}
    cpdomains.each do |cpdomain|
        count, subdomain = cpdomain.split(" ")
        loop do
            count_by_domain[subdomain] ||= 0
            count_by_domain[subdomain] += count.to_i
            domain, subdomain = subdomain.split('.', 2)
            if subdomain.nil?
                break
            end
        end
    end

    count_by_domain.map{|subdomain, count| "#{count} #{subdomain}"}
end
