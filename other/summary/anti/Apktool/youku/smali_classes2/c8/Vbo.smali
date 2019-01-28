.class public Lc8/Vbo;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bco;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bco;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$initial_matrix:Landroid/graphics/Matrix;

.field final synthetic val$max_zoom:F

.field final synthetic val$min_zoom:F


# direct methods
.method constructor <init>(Lc8/bco;Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V
    .locals 0
    .param p1, "this$0"    # Lc8/bco;

    .prologue
    .line 405
    iput-object p1, p0, Lc8/Vbo;->this$0:Lc8/bco;

    iput-object p2, p0, Lc8/Vbo;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lc8/Vbo;->val$initial_matrix:Landroid/graphics/Matrix;

    iput p4, p0, Lc8/Vbo;->val$min_zoom:F

    iput p5, p0, Lc8/Vbo;->val$max_zoom:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 409
    iget-object v0, p0, Lc8/Vbo;->this$0:Lc8/bco;

    iget-object v1, p0, Lc8/Vbo;->val$drawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lc8/Vbo;->val$initial_matrix:Landroid/graphics/Matrix;

    iget v3, p0, Lc8/Vbo;->val$min_zoom:F

    iget v4, p0, Lc8/Vbo;->val$max_zoom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/bco;->setImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/Matrix;FF)V

    .line 411
    return-void
.end method
