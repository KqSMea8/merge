.class public Lc8/YYo;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "CircleIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ZYo;
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
    .line 70
    iput-object p1, p0, Lc8/YYo;->this$0:Lc8/ZYo;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lc8/YYo;->this$0:Lc8/ZYo;

    invoke-static {v0, p1}, Lc8/ZYo;->access$100(Lc8/ZYo;I)V

    .line 75
    return-void
.end method
