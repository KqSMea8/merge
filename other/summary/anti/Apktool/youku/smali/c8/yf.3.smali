.class public Lc8/yf;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "Animatable2Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/zf;->getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/zf;


# direct methods
.method constructor <init>(Lc8/zf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/zf;

    .prologue
    .line 77
    iput-object p1, p0, Lc8/yf;->this$0:Lc8/zf;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 85
    iget-object v0, p0, Lc8/yf;->this$0:Lc8/zf;

    invoke-virtual {v0, p1}, Lc8/zf;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 80
    iget-object v0, p0, Lc8/yf;->this$0:Lc8/zf;

    invoke-virtual {v0, p1}, Lc8/zf;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method
