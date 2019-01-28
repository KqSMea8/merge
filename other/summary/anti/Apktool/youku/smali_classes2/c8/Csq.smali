.class public final Lc8/Csq;
.super Ljava/lang/Object;
.source "OperatorMaterialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Esq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lc8/Esq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Esq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lc8/Esq;

    invoke-direct {v0}, Lc8/Esq;-><init>()V

    sput-object v0, Lc8/Csq;->INSTANCE:Lc8/Esq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
