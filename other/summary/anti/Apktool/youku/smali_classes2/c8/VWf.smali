.class public Lc8/VWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->destroyInstance(Ljava/lang/String;)V
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
    .line 1468
    iput-object p1, p0, Lc8/VWf;->this$0:Lc8/ZWf;

    iput-object p2, p0, Lc8/VWf;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1471
    iget-object v0, p0, Lc8/VWf;->this$0:Lc8/ZWf;

    iget-object v1, p0, Lc8/VWf;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/ZWf;->access$400(Lc8/ZWf;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lc8/VWf;->this$0:Lc8/ZWf;

    iget-object v1, p0, Lc8/VWf;->val$instanceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/ZWf;->access$500(Lc8/ZWf;Ljava/lang/String;)V

    .line 1473
    return-void
.end method
