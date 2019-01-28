.class public Lc8/xZb;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IZb;-><init>(Lc8/uZb;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IZb;

.field final synthetic val$context:Lc8/uZb;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lc8/IZb;Lc8/uZb;I)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lc8/xZb;->this$0:Lc8/IZb;

    iput-object p2, p0, Lc8/xZb;->val$context:Lc8/uZb;

    iput p3, p0, Lc8/xZb;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    iget-object v1, p0, Lc8/xZb;->val$context:Lc8/uZb;

    iget v2, p0, Lc8/xZb;->val$id:I

    iget-object v3, p0, Lc8/xZb;->this$0:Lc8/IZb;

    invoke-virtual {v1, v2, v3, p1, p2}, Lc8/uZb;->onTouchHandleMove(ILc8/IZb;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "consumed":Z
    return v0
.end method
