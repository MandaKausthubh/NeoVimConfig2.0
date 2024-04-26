#include<bits/stdc++.h>
using namespace std;
using ll = long long;
using ull = unsigned long long;
using ld = long double;
using vi = std::vector<int>;
using vll = std::vector<long long>;
using pii = std::pair<int, int>;
using pll = std::pair<int, int>;

template<class T> using vc = std::vector<T>;
template<class T, class S> using p = std::pair<T, S>;


constexpr int inf = std::numeric_limits<int>::max() / 2;
constexpr ll infll = std::numeric_limits<ll>::max() / 2;


#define all(x) (x).begin(), (x).end()
#define forw(i, j, k) for(int i = j; i <= k; i++)
#define revfor(i, j, k) for(int i = j; i >= k; i--)
#define pb push_back
#define sz(x) ((int)x.size())

template<typename T, typename S> constexpr T ifloor(const T a, const S b){return a/b-(a%b&&(a^b)<0);}
template<typename T, typename S> constexpr T iceil(const T a, const S b){return ifloor(a+b-1,b);}
 
template<class T> vc<T> operator+(const vc<T> &B, const vc<T> &A) {
    vc<T> C(min(sz(A), sz(B)));
    forw(i, 0, sz(C)-1) C[i] = A[i] + B[i];
    return C;
}


template<class T> vc<T> operator-(const vc<T> &B, const vc<T> &A) {
    vc<T> C(min(sz(A), sz(B)));
    forw(i, 0, sz(C)-1) C[i] = A[i] - B[i];
    return C;
}

template<class T> vc<T> operator* (const vc<T> &B, const vc<T> &A) {
    vc<T> C(min(sz(A), sz(B)));
    forw(i, 0, sz(C)-1) C[i] = A[i] * B[i];
    return C;
}


template<class T> void printvc( vc<T> A) {for(auto i: A) cout << i << ' '; cout << "\n";}



// Segment Trees are cool and easy:::
template<class T> class SegTree {
    public:
        int n, N = 1e5;
        T Array[2*((int) 1e5)];
        T (*oper) (T &X, T &Y);
        T dummy;

        SegTree(int NumberOfTerms, T (*opera)(T &A, T &B), const T Dummy) {
            n = NumberOfTerms;
            oper = opera;
            dummy = Dummy;
            forw(i, 0, 2*N) {Array[i] = Dummy;}
        }

        void FillSegTree(vc<T> VectorToFill) {forw(i, n+1, 2*n) Array[i] = VectorToFill[i-n-1]; }

        void build() {
            revfor(i, n-1, 1) Array[i] = oper(Array[i<<1], Array[i<<1|1]);
        }

        void modify(int p, T value) {
            for(Array[p += n] = value; p > 1; p >>= 1) Array[p>>1] = Array[p] + Array[p^1];
        }

        // [l,r] inclusive:::
        T Query(int l, int r) {
            T res = 0;
            for(l+=n, r+=n; l < r; l >>= 1, r >>= 1) {
                if(l&1) res = oper(res, Array[l--]);
                if(r&1) res = oper(res, Array[r++]);
            }
        }
};


template<class T> class BinaryIndexTree {
    public:
        T BArray[2*((int)1e5)];
        T Array[2*((int)1e5)];
        int n;

        BinaryIndexTree(int SizeOfArrayMax, vc<T> A) {
            n = SizeOfArrayMax+1;
            forw(i, 1, n) Array[i] = BArray[i] = A[i-1];
            T (*oper) (T &X, T &Y);
            int i = 1;
            while(i <= n) {}
        }
};


void solve();

int main(void) {
    ios_base::sync_with_stdio(0), cin.tie(0);
    int n; cin >> n;
    while(n--) {solve();}
    return 0;
}

void solve() {
    
}
