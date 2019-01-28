.class public Lc8/pfg;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sfg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sfg;


# direct methods
.method constructor <init>(Lc8/sfg;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lc8/pfg;->this$0:Lc8/sfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 457
    iget-object v0, p0, Lc8/pfg;->this$0:Lc8/sfg;

    invoke-virtual {v0}, Lc8/sfg;->invalidateSelf()V

    .line 458
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 462
    iget-object v0, p0, Lc8/pfg;->this$0:Lc8/sfg;

    invoke-virtual {v0, p2, p3, p4}, Lc8/sfg;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 463
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 467
    iget-object v0, p0, Lc8/pfg;->this$0:Lc8/sfg;

    invoke-virtual {v0, p2}, Lc8/sfg;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method
