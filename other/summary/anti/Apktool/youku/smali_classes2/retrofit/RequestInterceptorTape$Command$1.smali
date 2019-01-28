.class public final enum Lretrofit/RequestInterceptorTape$Command$1;
.super Lretrofit/RequestInterceptorTape$Command;
.source "RequestInterceptorTape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestInterceptorTape$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestInterceptorTape$Command;-><init>(Ljava/lang/String;ILc8/ghq;)V

    return-void
.end method


# virtual methods
.method public intercept(Lc8/ehq;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "facade"    # Lc8/ehq;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-interface {p1, p2, p3}, Lc8/ehq;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method
