.class public Lc8/JJj;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lc8/BSe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/MJj;->construct(Lc8/dJj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/MJj;


# direct methods
.method constructor <init>(Lc8/MJj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/MJj;

    .prologue
    .line 64
    iput-object p1, p0, Lc8/JJj;->this$0:Lc8/MJj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 66
    if-nez p1, :cond_0

    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "hostname == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/UnknownHostException;

    const-string/jumbo v1, "SecurityException"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
