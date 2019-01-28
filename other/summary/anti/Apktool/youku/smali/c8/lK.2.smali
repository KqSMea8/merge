.class public Lc8/lK;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field private static volatile securityFactory:Lc8/hK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lc8/lK;->securityFactory:Lc8/hK;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecurityFactory()Lc8/hK;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lc8/lK;->securityFactory:Lc8/hK;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lc8/kK;

    invoke-direct {v0}, Lc8/kK;-><init>()V

    sput-object v0, Lc8/lK;->securityFactory:Lc8/hK;

    .line 27
    :cond_0
    sget-object v0, Lc8/lK;->securityFactory:Lc8/hK;

    return-object v0
.end method
