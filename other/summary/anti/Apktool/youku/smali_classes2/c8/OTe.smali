.class public abstract Lc8/OTe;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lc8/OTe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 916
    new-instance v0, Lc8/NTe;

    invoke-direct {v0}, Lc8/NTe;-><init>()V

    sput-object v0, Lc8/OTe;->REFUSE_INCOMING_STREAMS:Lc8/OTe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettings(Lc8/TTe;)V
    .locals 0
    .param p1, "connection"    # Lc8/TTe;

    .prologue
    .line 941
    return-void
.end method

.method public abstract onStream(Lc8/YTe;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
