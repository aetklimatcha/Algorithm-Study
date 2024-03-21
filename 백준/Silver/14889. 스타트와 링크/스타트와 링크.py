def team(a,n):
    global result
    if a == N//2:
        start, link = 0, 0
        for i in range(N):
            for j in range(N):
                if visited[i] and visited[j]: # i, j 다 방문
                    start += S[i][j] # 스타트팀에 배정
                elif not visited[i] and not visited[j]: # i,j 둘 다 방문 X
                    link +=S[i][j] # 링크 팀에 배정
        result = min(result,abs(start-link)) # 최소값
        return
    else :
        for x in range(n,N): 
            if visited[x] == 0: # 방문 X
                visited[x] = 1 # 방문 체크
                team(a+1,x+1) # 횟수 +
                visited[x] = 0 # 되돌아가기
import sys
N = int(sys.stdin.readline())
S = [list(map(int, sys.stdin.readline().split())) for _ in range(N)]
visited = [0]*N
result = float('inf')
team(0,0)
print(result)