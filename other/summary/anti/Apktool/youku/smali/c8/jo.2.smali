.class public Lc8/jo;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lc8/Et;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vo;->createSubDecor()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vo;


# direct methods
.method constructor <init>(Lc8/vo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/vo;

    .prologue
    .line 464
    iput-object p1, p0, Lc8/jo;->this$0:Lc8/vo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Rect;

    .prologue
    .line 467
    iget-object v0, p0, Lc8/jo;->this$0:Lc8/vo;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Lc8/vo;->updateStatusGuard(I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 468
    return-void
.end method
