.class public final Lc8/kZf;
.super Ljava/lang/Object;
.source "InvokeMethodAction.java"

# interfaces
.implements Lc8/fYf;


# instance fields
.field private final mArgs:Lcom/alibaba/fastjson/JSONArray;

.field private final mMethod:Ljava/lang/String;

.field private final mRef:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/kZf;->mRef:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lc8/kZf;->mMethod:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lc8/kZf;->mArgs:Lcom/alibaba/fastjson/JSONArray;

    .line 39
    return-void
.end method


# virtual methods
.method public executeDom(Lc8/gYf;)V
    .locals 3
    .param p1, "context"    # Lc8/gYf;

    .prologue
    .line 43
    iget-object v1, p0, Lc8/kZf;->mRef:Ljava/lang/String;

    invoke-interface {p1, v1}, Lc8/gYf;->getCompByRef(Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    .line 44
    .local v0, "comp":Lc8/tbg;
    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v1, "DOMAction"

    const-string/jumbo v2, "target component not found."

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lc8/kZf;->mMethod:Ljava/lang/String;

    iget-object v2, p0, Lc8/kZf;->mArgs:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, v1, v2}, Lc8/tbg;->invoke(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)V

    goto :goto_0
.end method
