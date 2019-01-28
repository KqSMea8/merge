.class public final Lc8/kK;
.super Ljava/lang/Object;
.source "SecurityManager.java"

# interfaces
.implements Lc8/hK;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lK;->getSecurityFactory()Lc8/hK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNonSecurity(Ljava/lang/String;)Lc8/gK;
    .locals 1
    .param p1, "appSecret"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lc8/iK;

    invoke-direct {v0, p1}, Lc8/iK;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSecurity(Ljava/lang/String;)Lc8/gK;
    .locals 1
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lc8/jK;

    invoke-direct {v0, p1}, Lc8/jK;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
