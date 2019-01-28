.class public Lc8/Wgb;
.super Ljava/lang/Object;
.source "ResultCode.java"


# static fields
.field public static final CAPTCHA_RELOGIN:Lc8/Wgb;

.field public static final CHECK:Lc8/Wgb;

.field public static final CONTINUE_LOGIN:Lc8/Wgb;

.field public static final IGNORE:Lc8/Wgb;

.field public static final SUCCESS:Lc8/Wgb;

.field public static final SYSTEM_EXCEPTION:Lc8/Wgb;

.field public static final TRUST_LOGIN:Lc8/Wgb;

.field public static final USER_CANCEL:Lc8/Wgb;


# instance fields
.field public code:I

.field public message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Lc8/Wgb;

    const/16 v1, 0x64

    const-string/jumbo v2, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    .line 11
    new-instance v0, Lc8/Wgb;

    const/16 v1, -0x64

    const-string/jumbo v2, "IGNORE"

    invoke-direct {v0, v1, v2}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc8/Wgb;->IGNORE:Lc8/Wgb;

    .line 12
    new-instance v0, Lc8/Wgb;

    const/16 v1, 0x67

    const-string/jumbo v2, "CAPTCHA_RELOGIN"

    invoke-direct {v0, v1, v2}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc8/Wgb;->CAPTCHA_RELOGIN:Lc8/Wgb;

    .line 13
    new-instance v0, Lc8/Wgb;

    const/16 v1, 0x68

    const-string/jumbo v2, "TRUST_LOGIN"

    invoke-direct {v0, v1, v2}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc8/Wgb;->TRUST_LOGIN:Lc8/Wgb;

    .line 14
    new-instance v0, Lc8/Wgb;

    const/16 v1, 0x69

    const-string/jumbo v2, "continueLogin"

    invoke-direct {v0, v1, v2}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc8/Wgb;->CONTINUE_LOGIN:Lc8/Wgb;

    .line 15
    new-instance v0, Lc8/Wgb;

    const/16 v1, 0x6c

    const-string/jumbo v2, "CHECK"

    invoke-direct {v0, v1, v2}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc8/Wgb;->CHECK:Lc8/Wgb;

    .line 17
    new-instance v0, Lc8/Wgb;

    const/16 v1, 0x2713

    const-string/jumbo v2, "USER_CANCEL"

    invoke-direct {v0, v1, v2}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc8/Wgb;->USER_CANCEL:Lc8/Wgb;

    .line 18
    new-instance v0, Lc8/Wgb;

    const/16 v1, 0x271a

    const-string/jumbo v2, "SYSTEM_EXCEPTION"

    invoke-direct {v0, v1, v2}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc8/Wgb;->SYSTEM_EXCEPTION:Lc8/Wgb;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lc8/Wgb;->code:I

    .line 31
    iput-object p2, p0, Lc8/Wgb;->message:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static varargs create(I[Ljava/lang/Object;)Lc8/Wgb;
    .locals 2
    .param p0, "code"    # I
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lc8/Ngb;->getMessageContent(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "formatMessage":Ljava/lang/String;
    new-instance v1, Lc8/Wgb;

    invoke-direct {v1, p0, v0}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    .line 46
    .local v1, "resultCode":Lc8/Wgb;
    return-object v1
.end method

.method public static create(Lc8/Mgb;)Lc8/Wgb;
    .locals 3
    .param p0, "message"    # Lc8/Mgb;

    .prologue
    .line 39
    new-instance v0, Lc8/Wgb;

    iget v1, p0, Lc8/Mgb;->code:I

    iget-object v2, p0, Lc8/Mgb;->message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lc8/Wgb;-><init>(ILjava/lang/String;)V

    .line 40
    .local v0, "resultCode":Lc8/Wgb;
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 64
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 65
    check-cast v0, Lc8/Wgb;

    .line 66
    .local v0, "other":Lc8/Wgb;
    iget v3, p0, Lc8/Wgb;->code:I

    iget v4, v0, Lc8/Wgb;->code:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 67
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x1

    .line 53
    .local v0, "result":I
    iget v1, p0, Lc8/Wgb;->code:I

    add-int/lit8 v0, v1, 0x1f

    .line 54
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lc8/Wgb;->code:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
