.class public Lc8/XYo;
.super Ljava/lang/Object;
.source "CircleIndicator.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ZYo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ZYo;


# direct methods
.method constructor <init>(Lc8/ZYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ZYo;

    .prologue
    .line 39
    iput-object p1, p0, Lc8/XYo;->this$0:Lc8/ZYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/XYo;->this$0:Lc8/ZYo;

    invoke-static {v0}, Lc8/ZYo;->access$000(Lc8/ZYo;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lc8/XYo;->this$0:Lc8/ZYo;

    invoke-static {v0}, Lc8/ZYo;->access$000(Lc8/ZYo;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lc8/XYo;->this$0:Lc8/ZYo;

    invoke-static {v1}, Lc8/ZYo;->access$000(Lc8/ZYo;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 45
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
