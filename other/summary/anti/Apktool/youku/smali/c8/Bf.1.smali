.class public Lc8/Bf;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ff;


# direct methods
.method constructor <init>(Lc8/Ff;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ff;

    .prologue
    .line 640
    iput-object p1, p0, Lc8/Bf;->this$0:Lc8/Ff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 643
    iget-object v0, p0, Lc8/Bf;->this$0:Lc8/Ff;

    invoke-virtual {v0}, Lc8/Ff;->invalidateSelf()V

    .line 644
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 648
    iget-object v0, p0, Lc8/Bf;->this$0:Lc8/Ff;

    invoke-virtual {v0, p2, p3, p4}, Lc8/Ff;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 649
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 653
    iget-object v0, p0, Lc8/Bf;->this$0:Lc8/Ff;

    invoke-virtual {v0, p2}, Lc8/Ff;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 654
    return-void
.end method