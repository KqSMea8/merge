.class public final enum Lcom/youku/widget/YoukuDialog$TYPE;
.super Ljava/lang/Enum;
.source "YoukuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Cbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youku/widget/YoukuDialog$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youku/widget/YoukuDialog$TYPE;

.field public static final enum normal:Lcom/youku/widget/YoukuDialog$TYPE;

.field public static final enum picker:Lcom/youku/widget/YoukuDialog$TYPE;

.field public static final enum update:Lcom/youku/widget/YoukuDialog$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/youku/widget/YoukuDialog$TYPE;

    const-string/jumbo v1, "normal"

    invoke-direct {v0, v1, v2}, Lcom/youku/widget/YoukuDialog$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/YoukuDialog$TYPE;->normal:Lcom/youku/widget/YoukuDialog$TYPE;

    new-instance v0, Lcom/youku/widget/YoukuDialog$TYPE;

    const-string/jumbo v1, "picker"

    invoke-direct {v0, v1, v3}, Lcom/youku/widget/YoukuDialog$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/YoukuDialog$TYPE;->picker:Lcom/youku/widget/YoukuDialog$TYPE;

    new-instance v0, Lcom/youku/widget/YoukuDialog$TYPE;

    const-string/jumbo v1, "update"

    invoke-direct {v0, v1, v4}, Lcom/youku/widget/YoukuDialog$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/youku/widget/YoukuDialog$TYPE;->update:Lcom/youku/widget/YoukuDialog$TYPE;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/youku/widget/YoukuDialog$TYPE;

    sget-object v1, Lcom/youku/widget/YoukuDialog$TYPE;->normal:Lcom/youku/widget/YoukuDialog$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/youku/widget/YoukuDialog$TYPE;->picker:Lcom/youku/widget/YoukuDialog$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/youku/widget/YoukuDialog$TYPE;->update:Lcom/youku/widget/YoukuDialog$TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/youku/widget/YoukuDialog$TYPE;->$VALUES:[Lcom/youku/widget/YoukuDialog$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/youku/widget/YoukuDialog$TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/youku/widget/YoukuDialog$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/YoukuDialog$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/youku/widget/YoukuDialog$TYPE;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/youku/widget/YoukuDialog$TYPE;->$VALUES:[Lcom/youku/widget/YoukuDialog$TYPE;

    invoke-virtual {v0}, [Lcom/youku/widget/YoukuDialog$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youku/widget/YoukuDialog$TYPE;

    return-object v0
.end method
