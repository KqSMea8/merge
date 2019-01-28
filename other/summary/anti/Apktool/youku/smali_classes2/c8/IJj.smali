.class public Lc8/IJj;
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

.field final synthetic val$ykRequest:Lc8/dJj;


# direct methods
.method constructor <init>(Lc8/MJj;Lc8/dJj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/MJj;

    .prologue
    .line 57
    iput-object p1, p0, Lc8/IJj;->this$0:Lc8/MJj;

    iput-object p2, p0, Lc8/IJj;->val$ykRequest:Lc8/dJj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    .line 60
    iget-object v0, p0, Lc8/IJj;->val$ykRequest:Lc8/dJj;

    invoke-virtual {v0}, Lc8/dJj;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
