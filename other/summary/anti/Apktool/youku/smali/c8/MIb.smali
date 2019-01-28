.class public Lc8/MIb;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/NIb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolveTask"
.end annotation


# instance fields
.field private final context:Lc8/WIb;

.field public fieldDeserializer:Lc8/fJb;

.field public ownerContext:Lc8/WIb;

.field private final referenceValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/WIb;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lc8/WIb;
    .param p2, "referenceValue"    # Ljava/lang/String;

    .prologue
    .line 1545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1546
    iput-object p1, p0, Lc8/MIb;->context:Lc8/WIb;

    .line 1547
    iput-object p2, p0, Lc8/MIb;->referenceValue:Ljava/lang/String;

    .line 1548
    return-void
.end method

.method static synthetic access$000(Lc8/MIb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/MIb;

    .prologue
    .line 1538
    iget-object v0, p0, Lc8/MIb;->referenceValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/MIb;)Lc8/WIb;
    .locals 1
    .param p0, "x0"    # Lc8/MIb;

    .prologue
    .line 1538
    iget-object v0, p0, Lc8/MIb;->context:Lc8/WIb;

    return-object v0
.end method
