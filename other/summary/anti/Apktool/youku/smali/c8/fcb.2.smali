.class public Lc8/fcb;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lc8/xcb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hcb;->setAnimation(Ljava/lang/String;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hcb;

.field final synthetic val$animationName:Ljava/lang/String;

.field final synthetic val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;


# direct methods
.method constructor <init>(Lc8/hcb;Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/hcb;

    .prologue
    .line 418
    iput-object p1, p0, Lc8/fcb;->this$0:Lc8/hcb;

    iput-object p2, p0, Lc8/fcb;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    iput-object p3, p0, Lc8/fcb;->val$animationName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompositionLoaded(Lc8/kcb;)V
    .locals 3
    .param p1, "composition"    # Lc8/kcb;

    .prologue
    .line 420
    iget-object v0, p0, Lc8/fcb;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->Strong:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    if-ne v0, v1, :cond_1

    .line 421
    invoke-static {}, Lc8/hcb;->access$300()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc8/fcb;->val$animationName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/fcb;->this$0:Lc8/hcb;

    invoke-virtual {v0, p1}, Lc8/hcb;->setComposition(Lc8/kcb;)V

    .line 427
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lc8/fcb;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;->Weak:Lcom/airbnb/lottie/LottieAnimationView$CacheStrategy;

    if-ne v0, v1, :cond_0

    .line 423
    invoke-static {}, Lc8/hcb;->access$400()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc8/fcb;->val$animationName:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
