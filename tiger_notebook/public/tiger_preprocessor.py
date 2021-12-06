# -*- coding:utf-8 -*-
from nbconvert.preprocessors.execute import ExecutePreprocessor
from traitlets.traitlets import Unicode


class TigerPreprocessor(ExecutePreprocessor):

    param_file_path = Unicode(
        default_value="/param.conf",
        allow_none=False,
        help="param file"
    )

    def __init__(self):
        super(TigerPreprocessor, self).__init__()
        print(self.param_file_path)

    def preprocess(self, nb, resources=None, km=None):
        print(nb)
        print(resources)
        print(km)
        super(TigerPreprocessor, self).preprocess(nb, resources, km)

    def preprocess_cell(self, cell, resources, index):
        super(TigerPreprocessor, self).preprocess_cell(cell, resources, index)


print("=================================================================")
print("===================TigerPreprocessor=============================")
print("=================================================================")
