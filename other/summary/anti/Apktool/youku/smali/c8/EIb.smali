.class public Lc8/EIb;
.super Ljava/lang/Object;
.source "JSONStreamContext.java"


# static fields
.field static final ArrayValue:I = 0x3ed

.field static final PropertyKey:I = 0x3ea

.field static final PropertyValue:I = 0x3eb

.field static final StartArray:I = 0x3ec

.field static final StartObject:I = 0x3e9


# instance fields
.field protected final parent:Lc8/EIb;

.field protected state:I


# direct methods
.method public constructor <init>(Lc8/EIb;I)V
    .locals 0
    .param p1, "parent"    # Lc8/EIb;
    .param p2, "state"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/EIb;->parent:Lc8/EIb;

    .line 17
    iput p2, p0, Lc8/EIb;->state:I

    .line 18
    return-void
.end method
