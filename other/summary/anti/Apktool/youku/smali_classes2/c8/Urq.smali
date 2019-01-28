.class public final Lc8/Urq;
.super Ljava/lang/Object;
.source "OperatorDistinctUntilChanged.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vrq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Vrq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vrq",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lc8/Vrq;

    invoke-static {}, Lc8/Ayq;->identity()Lc8/Inq;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Vrq;-><init>(Lc8/Inq;)V

    sput-object v0, Lc8/Urq;->INSTANCE:Lc8/Vrq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
