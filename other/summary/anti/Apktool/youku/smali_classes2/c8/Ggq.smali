.class public final Lc8/Ggq;
.super Ljava/lang/Object;
.source "ErrorHandler.java"

# interfaces
.implements Lc8/Hgq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Lretrofit/RetrofitError;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "cause"    # Lretrofit/RetrofitError;

    .prologue
    .line 52
    return-object p1
.end method
