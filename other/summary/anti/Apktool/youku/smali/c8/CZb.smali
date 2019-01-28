.class public Lc8/CZb;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IZb;->getSystemDecorations()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IZb;


# direct methods
.method constructor <init>(Lc8/IZb;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lc8/CZb;->this$0:Lc8/IZb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 418
    iget-object v1, p0, Lc8/CZb;->this$0:Lc8/IZb;

    invoke-static {v1}, Lc8/IZb;->access$000(Lc8/IZb;)Lc8/uZb;

    move-result-object v1

    iget-object v2, p0, Lc8/CZb;->this$0:Lc8/IZb;

    iget v2, v2, Lc8/IZb;->id:I

    iget-object v3, p0, Lc8/CZb;->this$0:Lc8/IZb;

    invoke-virtual {v1, v2, v3, p1, p2}, Lc8/uZb;->onTouchHandleMove(ILc8/IZb;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 419
    .local v0, "consumed":Z
    return v0
.end method
