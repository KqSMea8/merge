.class public Lc8/vFn;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/ui/activity/HomePageActivity;->showBubbleTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/HomePageActivity;


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/HomePageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/HomePageActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 258
    iput-object p1, p0, Lc8/vFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lc8/vFn;->this$0:Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v0}, Lcom/youku/ui/activity/HomePageActivity;->access$200(Lcom/youku/ui/activity/HomePageActivity;)V

    .line 262
    return-void
.end method
