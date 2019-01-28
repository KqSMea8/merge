.class public final Lc8/Lfg;
.super Ljava/lang/Object;
.source "BoxShadowUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Sfg;->setBoxShadow(Landroid/view/View;Ljava/lang/String;[FIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$options:Lc8/Pfg;

.field final synthetic val$quality:F

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lc8/Pfg;Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lc8/Lfg;->val$options:Lc8/Pfg;

    iput-object p2, p0, Lc8/Lfg;->val$target:Landroid/view/View;

    iput p3, p0, Lc8/Lfg;->val$quality:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lc8/Lfg;->val$options:Lc8/Pfg;

    iget-boolean v0, v0, Lc8/Pfg;->isInset:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lc8/Lfg;->val$target:Landroid/view/View;

    iget-object v1, p0, Lc8/Lfg;->val$options:Lc8/Pfg;

    iget v2, p0, Lc8/Lfg;->val$quality:F

    invoke-static {v0, v1, v2}, Lc8/Sfg;->access$000(Landroid/view/View;Lc8/Pfg;F)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lc8/Lfg;->val$target:Landroid/view/View;

    iget-object v1, p0, Lc8/Lfg;->val$options:Lc8/Pfg;

    iget v2, p0, Lc8/Lfg;->val$quality:F

    invoke-static {v0, v1, v2}, Lc8/Sfg;->access$100(Landroid/view/View;Lc8/Pfg;F)V

    goto :goto_0
.end method
