class SDKSettings {
	readonly appRoot: string;
	constructor(appRoot: string){
		this.appRoot = appRoot;

		SDKSettings.Shared = this;
	}

	private static _shared: SDKSettings | null;
	public static get Shared() : SDKSettings | null {
		return this._shared;
	}
	private static set Shared(val: SDKSettings | null) {
		this._shared = val;
	}
}

class PageNameObj {
	private _pageNameparts : string[] = [];

	private readonly _prefixValue: string;

	constructor(...pageNameParts: string[]){
		this._prefixValue = SDKSettings.Shared?.appRoot ?? "not set";
		this._pageNameparts.push(this._prefixValue);
		pageNameParts.forEach(part => {
			this.push(part);	
		});
	}

	public push(part: string): number {
		if(part != this._prefixValue) {
			this._pageNameparts.push(part);
		}
		return this._pageNameparts.length;
	}

	public pop(): string | undefined {
		return this._pageNameparts.pop();
	}

	public toString() : string {
		return this._pageNameparts.join(":");
	}

	public toJSON(): any {
		return this.toString();
	}
}

function PageName(...pageNameParts: string[]){
	return new PageNameObj(...pageNameParts);
}

class StartNavigate {
	pageName: PageNameObj

	constructor(pageName: PageNameObj){
		this.pageName = pageName;
	}
}

function pageNameTests() {
	new SDKSettings("khx");

	let pageName = PageName("home", "activity");
	console.log(pageName.toString());

	pageName.push("walking")
	console.log(pageName.toString());

	pageName.pop();
	console.log(pageName.toString());

	let sn = new StartNavigate(pageName);
	console.log(sn);
	console.log(JSON.stringify(sn));
}

pageNameTests();
// run with npx ts-node index.ts