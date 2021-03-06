classdef TestSURF
    %TestSURF
    properties (Constant)
        path = fileparts(fileparts(mfilename('fullpath')))
        img = rgb2gray(imread([TestSURF.path,filesep,'img001.jpg']))
    end
    
    methods (Static)
        function test_1
            result = cv.SURF(TestSURF.img);
        end
        
        function test_2
            [kpts,desc] = cv.SURF(TestSURF.img);
        end
        
        function test_error_1
            try
                cv.SURF();
                throw('UnitTest:Fail');
            catch e
                assert(strcmp(e.identifier,'mexopencv:error'));
            end
        end
    end
    
end

