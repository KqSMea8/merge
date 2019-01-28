.class public final Lc8/Tsq;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Usq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Usq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Usq",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lc8/Usq;

    invoke-direct {v0}, Lc8/Usq;-><init>()V

    sput-object v0, Lc8/Tsq;->INSTANCE:Lc8/Usq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
