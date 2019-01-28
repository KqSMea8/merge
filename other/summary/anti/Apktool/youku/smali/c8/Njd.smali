.class public final Lc8/Njd;
.super Lc8/Mjd;
.source "JsonNull.java"


# static fields
.field public static final INSTANCE:Lc8/Njd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lc8/Njd;

    invoke-direct {v0}, Lc8/Njd;-><init>()V

    sput-object v0, Lc8/Njd;->INSTANCE:Lc8/Njd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Lc8/Mjd;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lc8/Mjd;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lc8/Njd;->deepCopy()Lc8/Njd;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lc8/Njd;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lc8/Njd;->INSTANCE:Lc8/Njd;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 65
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lc8/Njd;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 57
    const-class v0, Lc8/Njd;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
