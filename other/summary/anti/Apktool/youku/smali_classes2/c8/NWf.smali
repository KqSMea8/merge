.class public Lc8/NWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->notifySerializeCodeCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZWf;


# direct methods
.method constructor <init>(Lc8/ZWf;)V
    .locals 0

    .prologue
    .line 1990
    iput-object p1, p0, Lc8/NWf;->this$0:Lc8/ZWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1993
    iget-object v0, p0, Lc8/NWf;->this$0:Lc8/ZWf;

    invoke-static {v0}, Lc8/ZWf;->access$1100(Lc8/ZWf;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1997
    :goto_0
    return-void

    .line 1996
    :cond_0
    iget-object v0, p0, Lc8/NWf;->this$0:Lc8/ZWf;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const-string/jumbo v3, "notifySerializeCodeCache"

    const/4 v4, 0x0

    new-array v4, v4, [Lc8/aXf;

    invoke-static {v0, v1, v2, v3, v4}, Lc8/ZWf;->access$1200(Lc8/ZWf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)V

    goto :goto_0
.end method
