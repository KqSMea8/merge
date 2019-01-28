.class public Lc8/RWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->refreshInstance(Ljava/lang/String;Lc8/PXf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZWf;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$jsonData:Lc8/PXf;


# direct methods
.method constructor <init>(Lc8/ZWf;Ljava/lang/String;Lc8/PXf;)V
    .locals 0

    .prologue
    .line 1250
    iput-object p1, p0, Lc8/RWf;->this$0:Lc8/ZWf;

    iput-object p2, p0, Lc8/RWf;->val$instanceId:Ljava/lang/String;

    iput-object p3, p0, Lc8/RWf;->val$jsonData:Lc8/PXf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1253
    iget-object v0, p0, Lc8/RWf;->this$0:Lc8/ZWf;

    iget-object v1, p0, Lc8/RWf;->val$instanceId:Ljava/lang/String;

    iget-object v2, p0, Lc8/RWf;->val$jsonData:Lc8/PXf;

    invoke-static {v0, v1, v2}, Lc8/ZWf;->access$100(Lc8/ZWf;Ljava/lang/String;Lc8/PXf;)V

    .line 1254
    return-void
.end method
