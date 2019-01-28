.class public Lc8/Bwb;
.super Lc8/Txb;
.source "PackageRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Dwb;->end(Lc8/lwb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Txb",
        "<",
        "Lc8/jyb",
        "<",
        "Lcom/alibaba/aliweex/cache/Package$Info;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Dwb;

.field final synthetic val$depCombo:Ljava/lang/StringBuffer;

.field final synthetic val$item:Lc8/lwb;


# direct methods
.method constructor <init>(Lc8/Dwb;Ljava/lang/StringBuffer;Lc8/lwb;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Dwb;

    .prologue
    .line 129
    iput-object p1, p0, Lc8/Bwb;->this$1:Lc8/Dwb;

    iput-object p2, p0, Lc8/Bwb;->val$depCombo:Ljava/lang/StringBuffer;

    iput-object p3, p0, Lc8/Bwb;->val$item:Lc8/lwb;

    invoke-direct {p0}, Lc8/Txb;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lc8/jyb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/jyb",
            "<",
            "Lcom/alibaba/aliweex/cache/Package$Info;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "data":Lc8/jyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$ParallelMerge<Lcom/alibaba/aliweex/cache/Package$Info;>;"
    iget-object v1, p0, Lc8/Bwb;->val$depCombo:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "depComboUrl":Ljava/lang/String;
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_0
    iget-object v1, p0, Lc8/Bwb;->val$item:Lc8/lwb;

    iget-object v1, v1, Lc8/lwb;->remoteInfo:Lc8/mwb;

    iput-object v0, v1, Lc8/mwb;->depComboUrl:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public bridge synthetic end(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 129
    check-cast p1, Lc8/jyb;

    invoke-virtual {p0, p1}, Lc8/Bwb;->end(Lc8/jyb;)V

    return-void
.end method
