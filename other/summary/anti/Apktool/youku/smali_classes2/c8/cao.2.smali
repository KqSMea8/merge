.class public Lc8/cao;
.super Ljava/lang/Object;
.source "OKHTTPLogger.java"

# interfaces
.implements Lc8/phq;


# static fields
.field private static final TAG:Ljava/lang/String; = "Retrofit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-boolean v0, Lc8/Oao;->DEBUG:Z

    .line 21
    return-void
.end method
