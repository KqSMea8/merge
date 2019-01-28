.class public Lc8/oqb;
.super Landroid/text/style/ClickableSpan;
.source "ItemClickSpan.java"


# instance fields
.field private final mComponentRef:Ljava/lang/String;

.field private final mInstanceId:Ljava/lang/String;

.field private final mPseudoRef:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentRef"    # Ljava/lang/String;
    .param p3, "pseudoRef"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 19
    iput-object p3, p0, Lc8/oqb;->mPseudoRef:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lc8/oqb;->mInstanceId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lc8/oqb;->mComponentRef:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v2

    iget-object v3, p0, Lc8/oqb;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v0

    .line 27
    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/nVf;->isDestroy()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const/4 v2, 0x1

    invoke-static {v2}, Lc8/ogg;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 29
    .local v1, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "pseudoRef"

    iget-object v3, p0, Lc8/oqb;->mPseudoRef:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v2, p0, Lc8/oqb;->mComponentRef:Ljava/lang/String;

    const-string/jumbo v3, "itemclick"

    invoke-virtual {v0, v2, v3, v1}, Lc8/nVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    .end local v1    # "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
