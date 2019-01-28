.class public Lc8/gJf;
.super Ljava/lang/Object;
.source "MonitorTaskFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fJf;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MonitorTaskFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static createMonitorTask(ILjava/util/List;)Lc8/eJf;
    .locals 4
    .param p0, "type"    # I
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lc8/UIf;",
            ">;)",
            "Lc8/eJf;"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "idList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/tao/messagekit/base/monitor/MonitorManager$ReportInfo;>;"
    const-string/jumbo v0, "MonitorTaskFactory"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "createMonitorTask type= "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    packed-switch p0, :pswitch_data_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    new-instance v0, Lc8/nJf;

    invoke-direct {v0}, Lc8/nJf;-><init>()V

    goto :goto_0

    .line 21
    :pswitch_1
    if-eqz p1, :cond_1

    new-instance v0, Lc8/iJf;

    invoke-direct {v0, p1}, Lc8/iJf;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 24
    :cond_1
    :pswitch_2
    new-instance v0, Lc8/lJf;

    invoke-direct {v0}, Lc8/lJf;-><init>()V

    goto :goto_0

    .line 27
    :pswitch_3
    if-eqz p1, :cond_2

    new-instance v0, Lc8/jJf;

    invoke-direct {v0, p1}, Lc8/jJf;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 30
    :cond_2
    :pswitch_4
    if-eqz p1, :cond_0

    new-instance v0, Lc8/dJf;

    invoke-direct {v0, p1}, Lc8/dJf;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
