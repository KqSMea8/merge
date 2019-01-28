.class public Lc8/XWf;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZWf;->registerComponents(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZWf;

.field final synthetic val$components:Ljava/util/List;


# direct methods
.method constructor <init>(Lc8/ZWf;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1776
    iput-object p1, p0, Lc8/XWf;->this$0:Lc8/ZWf;

    iput-object p2, p0, Lc8/XWf;->val$components:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1779
    iget-object v0, p0, Lc8/XWf;->this$0:Lc8/ZWf;

    iget-object v1, p0, Lc8/XWf;->val$components:Ljava/util/List;

    iget-object v2, p0, Lc8/XWf;->this$0:Lc8/ZWf;

    invoke-static {v2}, Lc8/ZWf;->access$600(Lc8/ZWf;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/ZWf;->access$800(Lc8/ZWf;Ljava/util/List;Ljava/util/List;)V

    .line 1780
    return-void
.end method
