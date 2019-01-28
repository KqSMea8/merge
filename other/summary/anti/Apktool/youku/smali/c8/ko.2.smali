.class public Lc8/ko;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Lc8/it;


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
    .line 519
    iput-object p1, p0, Lc8/ko;->this$0:Lc8/vo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedFromWindow()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lc8/ko;->this$0:Lc8/vo;

    invoke-virtual {v0}, Lc8/vo;->dismissPopups()V

    .line 526
    return-void
.end method
