.class public Lc8/ecb;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lc8/xcb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hcb;->setAnimation(ILcom/airbnb/lottie/LottieAnimationView$CacheStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hcb;

.field final synthetic val$animationResId:I

.field final synthetic val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;


# direct methods
.method constructor <init>(Lc8/hcb;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;I)V
    .locals 0
    .param p1, "this$0"    # Lc8/hcb;

    .prologue
    .line 369
    iput-object p1, p0, Lc8/ecb;->this$0:Lc8/hcb;

    iput-object p2, p0, Lc8/ecb;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    iput p3, p0, Lc8/ecb;->val$animationResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lc8/kcb;)V
    .locals 3
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 371
    iget-object v0, p0, Lc8/ecb;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->Strong:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    if-ne v0, v1, :cond_1

    .line 372
    invoke-static {}, Lc8/hcb;->access$100()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lc8/ecb;->val$animationResId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/ecb;->this$0:Lc8/hcb;

    invoke-virtual {v0, p1}, Lc8/hcb;->setComposition(Lc8/kcb;)V

    .line 378
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lc8/ecb;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->Weak:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    if-ne v0, v1, :cond_0

    .line 374
    invoke-static {}, Lc8/hcb;->access$200()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lc8/ecb;->val$animationResId:I

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method
