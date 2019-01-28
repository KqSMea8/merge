.class public Lc8/jJf;
.super Lc8/eJf;
.source "RemoveAckTask.java"


# instance fields
.field private idList:Ljava/util/List;
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
    .line 15
    .local p1, "idList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    invoke-direct {p0}, Lc8/eJf;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/jJf;->idList:Ljava/util/List;

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lc8/jJf;->idList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/SIf;->remove(Ljava/util/List;Z)V

    .line 22
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x4

    return v0
.end method
