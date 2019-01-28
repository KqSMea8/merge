.class public Lc8/iJf;
.super Lc8/eJf;
.source "RecordAckTask.java"


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "info":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    invoke-direct {p0}, Lc8/eJf;-><init>()V

    .line 19
    iput-object p1, p0, Lc8/iJf;->data:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 24
    iget-object v1, p0, Lc8/iJf;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/UIf;

    .line 25
    .local v0, "item":Lc8/UIf;
    invoke-static {v0}, Lc8/SIf;->record(Lc8/UIf;)V

    goto :goto_0

    .line 27
    .end local v0    # "item":Lc8/UIf;
    :cond_0
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    return v0
.end method
