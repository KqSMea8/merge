.class public Lc8/dGk;
.super Ljava/lang/Object;
.source "WindWaneManager.java"


# instance fields
.field private classArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lc8/RD;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/dGk;->classArrayList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public registerCalendarJsBridge(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/RD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/taobao/windvane/jsbridge/WVApiPlugin;>;"
    iget-object v0, p0, Lc8/dGk;->classArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const-string/jumbo v0, "DYKCalendarJSBridge"

    invoke-static {v0, p1}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;)V

    .line 32
    iget-object v0, p0, Lc8/dGk;->classArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    const-string/jumbo v0, "WindWaneManager"

    const-string/jumbo v1, "DYKCalendarJSBridge:registerJsBridge\u6ce8\u518c\u6210\u529f"

    invoke-static {v0, v1}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
