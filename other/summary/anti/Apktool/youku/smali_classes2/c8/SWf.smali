.class public Lc8/SWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
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
    .line 1380
    iput-object p1, p0, Lc8/SWf;->this$0:Lc8/ZWf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1383
    iget-object v0, p0, Lc8/SWf;->this$0:Lc8/ZWf;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lc8/ZWf;->access$200(Lc8/ZWf;Ljava/lang/String;)V

    .line 1384
    return-void
.end method
