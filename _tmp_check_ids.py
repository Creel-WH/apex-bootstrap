from collections import Counter
import re, pathlib
for name in ['page_00133.sql','page_00156.sql']:
    path = pathlib.Path(r'D:\ja-projects\apex\apex-bootstrap\export\file-management-platform@test\f299\apex\f299\application\pages') / name
    text = path.read_text(encoding='utf-8')
    ids = re.findall(r'p_id=>wwv_flow_imp\.id\((\d+)\)', text)
    counts = Counter(ids)
    dups = [(k,v) for k,v in counts.items() if v > 1]
    print(name, 'TOTAL_IDS', len(ids), 'DUP_COUNT', len(dups))
    print(dups[:20])