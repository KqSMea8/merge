.class public Lanet/channel/NoAvailStrategyException;
.super Ljava/lang/Exception;
.source "NoAvailStrategyException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private request:Lc8/lJ;


# direct methods
.method public constructor <init>(Lc8/lJ;)V
    .locals 0
    .param p1, "sessionRequest"    # Lc8/lJ;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 8
    iput-object p1, p0, Lanet/channel/NoAvailStrategyException;->request:Lc8/lJ;

    .line 9
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "No Available Strategy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
