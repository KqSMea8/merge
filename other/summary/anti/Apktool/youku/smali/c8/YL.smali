.class public Lc8/YL;
.super Ljava/lang/Object;
.source "ProxySetting.java"


# instance fields
.field public final authAccount:Ljava/lang/String;

.field public final authPassword:Ljava/lang/String;

.field public final proxy:Ljava/net/Proxy;


# direct methods
.method private constructor <init>(Ljava/net/Proxy;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/YL;->proxy:Ljava/net/Proxy;

    .line 19
    iput-object p2, p0, Lc8/YL;->authAccount:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lc8/YL;->authPassword:Ljava/lang/String;

    .line 21
    return-void
.end method
