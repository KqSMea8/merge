.class public Lc8/OWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->setStackTopInstance(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZWf;

.field final synthetic val$instanceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/ZWf;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lc8/OWf;->this$0:Lc8/ZWf;

    iput-object p2, p0, Lc8/OWf;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lc8/OWf;->this$0:Lc8/ZWf;

    invoke-static {v0}, Lc8/ZWf;->access$000(Lc8/ZWf;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v0

    iget-object v1, p0, Lc8/OWf;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/bridge/WXHashMap;->setStackTopInstance(Ljava/lang/String;)V

    .line 295
    return-void
.end method
