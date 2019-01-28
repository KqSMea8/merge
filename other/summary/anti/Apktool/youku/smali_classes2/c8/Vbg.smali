.class public Lc8/Vbg;
.super Ljava/lang/Object;
.source "WXScroller.java"

# interfaces
.implements Lc8/reg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/acg;->initComponentHostView(Landroid/content/Context;)Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/acg;


# direct methods
.method constructor <init>(Lc8/acg;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lc8/Vbg;->this$0:Lc8/acg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lc8/seg;IIII)V
    .locals 1
    .param p1, "scrollView"    # Lc8/seg;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lc8/Vbg;->this$0:Lc8/acg;

    invoke-static {v0, p2, p3, p4, p5}, Lc8/acg;->access$200(Lc8/acg;IIII)V

    .line 396
    return-void
.end method
